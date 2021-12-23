require_relative 'spec_helper'

describe Classroom do
  before :each do
    @classroom = Classroom.new('Programming')
    @student = Student.new(age: 20, classroom: @classroom)
    @classroom.add_student @student
  end

  describe 'Classroom' do
    it 'Return classroom object given one param' do
      expect(@classroom).to be_an_instance_of Classroom
    end
  end

  describe 'Students' do
    it 'Should give has-many relationship' do
      expect(@classroom).to have_attributes('students' => [@student])
    end
  end

  describe 'Label' do
    it 'Should return the label' do
      expect(@classroom.label).to eq 'Programming'
    end
  end

  describe 'Add student' do
    context 'Classroom' do
      it 'Adds a student correctly' do
        expect(@classroom.students).to include(@student)
      end
    end

    context 'Student' do
      it 'Belongs to the supposed classroom' do
        expect(@student.classroom).to eq @classroom
      end
    end
  end
end